import { Head, useForm } from '@inertiajs/react';
import { LoaderCircle } from 'lucide-react';
import { FormEventHandler } from 'react';

import InputError from '@/components/input-error';
import TextLink from '@/components/text-link';
import { Button } from '@/components/ui/button';
import { Checkbox } from '@/components/ui/checkbox';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import AuthLayout from '@/layouts/auth-layout';


export default function List({ mustVerifyEmail, status , data}: { mustVerifyEmail: boolean; status?: string; data: [] }) {   
    
    const dataInner = [
        {
          "0": "www.google.com",
          "1": "Click here and enjoy searching",
          "2": "17"
        },
      ];

    return (
        <div>
            mustVerifyEmail - {mustVerifyEmail} , status - {status} 

        
            <ul>
        {dataInner.map(item => {
          return <li>{item[0]}</li>;
        })}
      </ul>

      <ul>
        {data.map(item => {
          return <li>{item[0]}</li>;
        })}
      </ul>
        </div>
    );
}
